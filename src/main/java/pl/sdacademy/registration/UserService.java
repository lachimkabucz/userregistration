package pl.sdacademy.registration;


import javax.inject.Singleton;
import javax.inject.Inject;
import java.util.Collection;
import java.util.stream.Collectors;

@Singleton
public class UserService {

    @Inject
    private UserDao userDao;


    void saveUser(userDTO userDTO) {
        User user = new User();
        user.setFirstName(userDTO.getFirstName());
        user.setLastName(userDTO.getLastName());


        AddressDTO addressDTO = userDTO.getAddressDTO();
        if (addressDTO != null) {
            Address address = new Address();
            address.setCity(addressDTO.getCity());
            address.setStreet(addressDTO.getStreet());
            address.setHouseNo(addressDTO.getHouseNo());
            user.setAddress(address);

        }
        userDao.saveUser(user);
    }

    Collection<userDTO> getUsers() {
        return userDao.getUsers().stream()
                .map(userDTO::new)
                .collect(Collectors.toList());
    }
}
