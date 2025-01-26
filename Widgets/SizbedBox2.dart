import 'package:flutter/material.dart';
import 'package:my_protfolio/constatn/constant.dart';

// ignore: must_be_immutable
class Sizbedbox2 extends StatefulWidget {
  
  Sizbedbox2({super.key,});

  @override
  State<Sizbedbox2> createState() => _Sizbedbox2State();
}

class _Sizbedbox2State extends State<Sizbedbox2> {
  bool hoverValue = true;
  var deviceHeigth;
  var deviceWidth;
  @override
  Widget build(BuildContext context) {
    deviceHeigth = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: bothSidePadding),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            // Conatiner 1 - Image
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: deviceWidth * 0.25,
                height: deviceHeigth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://portfolio-fullstack-demo.vercel.app/assets/aboutSectionMemoji.PNG'))),
              ),
            ),
            // Conatiner 2 Text Details
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abhishek',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceHeigth * 0.08),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 199, 195, 195),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('Flutter Dev'),
                    ),
                  ),
                  SizedBox(height: 9,),
                  Text(
                    'I m a flutter developer focused on Mobile and web application. Currently residing in Bangalore.\nCurrently seeking exciting opportunities as a Flutter developer to leverage my skills in a dynamic and innovative environment.\nEager to collaborate with a talented team to deliver exceptional mobile solutions that make a difference.\nCommitted to continuous learning and staying updated with the latest industry trends.',
                    style: TextStyle(fontSize:deviceWidth * 0.0075),
                  ),
                ],
              ),
            ),
            // Conatiner 3 Socail Media buttons
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                      width: deviceWidth * 0.055,
                      height: deviceHeigth * 0.5,
                      decoration: BoxDecoration(
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: deviceWidth * 0.035 ,
                            height: deviceHeigth * 0.055,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/linked_Image.jpg'),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: TextButton(onPressed: (){},child: Text(''),),
                          ),
                          Container(
                            width: deviceWidth * 0.035 ,
                            height: deviceHeigth * 0.055,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://png.pngtree.com/png-clipart/20200721/original/pngtree-gmail-logo-png-png-image_4839469.jpg'),fit:BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: TextButton(onPressed: (){},child: Text(''),),
                          ),
                          Container(
                            width: deviceWidth * 0.035 ,
                            height: deviceHeigth * 0.055,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ8NDQ0NFREXFhURFRUYHSkgGBolGxUWITIhMSkrLi4uGB82ODYsQyk5OiwBCgoKDQ0NFQ8PFSsdFR0rLSsrKy0tLSstKy0rLSstLisrLSsrKy4rLTctLSsxKystKzcrLSsrLSstKy0tKysrLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEBAAMBAQEAAAAAAAAAAAACAQADBwYFBP/EAEIQAAIBAwAGBQYMBQQDAAAAAAABAgMEEQUGEiExQVFhcYGRExUiobHRIzRCUlRicnSUsrPBBxQyZJND4fDxJDNj/8QAGwEBAAMBAQEBAAAAAAAAAAAAAgABAwYFBAf/xAAyEQEBAAIBAQQIBQQDAQAAAAAAAQIRAwQFITFREhMiMkFxkbEzUmGB0RShweFCU/Aj/9oADAMBAAIRAxEAPwD52D0duv0zBNppmC9q0mCbTTME2rTMF7TSYL2rSYL2rTMF7VpMF7VpMF7HSYL2rSYFsdJgvatJgWxsRoUo6RoWxsFoUo2I0KUbBaFKNiClGxGhShYLQ5RsFoUo2I0KULBaHKFgtDlGxGhShYItjp6DBx+3ZaZgm1aZgvaaZgm00mCbVpmC9q0zBe00mC9q0mC9q0mC9jpmBbVpMF7VpMC2OhaL2OkaFsbEwLarEwLY2C0KUbEaFKFgtClGxGhSjYLQpQsRoco2CxSjYLQ5QsRoUoWC0OUbBaHKFiYLHT0ODjtuy0zBNppMF7TTMF7VpmCbTSYL2rTMF7VpME2rTMF7VpMC2rSYL2rSYFsdJgvY6TAtq0LQtjYjRco2JgUo2C0KUbEaHKNgtClCxGhSjYLQ5QsRoUo2C0KULBaHKNiNDlCwWhShYLQ5RsTAtjp6HBxu3Z6Zgm00zBNppmC9q0mCbTTMF7VpMF7VpmC9q0mC9q0mC9jpMC2rSYL2OkaFtWkaFsdJgWxsHBco2I0KUbBaFKNiYHKNiNClCwWhSjYLQ5QsRoUo2C0OULBaFKFgsco2I0OULBaFKFiC2rT0WDjNu00zBNppMF7VpmCbTTMF7VpMF7TTME2rSYL2OkwLatJgvatI0XtWkwKUdJgWxsTBco6RoUo2C0KUbEaFKNgtC2NiNDlGwWhShYjQpRsFocoWC0KUbEaHKFgtDlCwWhShYLQ5RsFocoWILY6ejwcXt2bMF7RmCbRME2jME2jMF7RMF7VpMF7VpMF7VpmBbVpMF7HQ4FsbEaLlVpMC2NiNClGwWhShYjQpRsRoco2C0KUbBaFKFiNDlCwWhSjYLQ5QsFoUo2I0OULBaHKFgtDlCwWhyhYmC9i9Hg4vbsGYJtGYL2jME2iYL2jME2iYL2tMF7RmC9omC9q0mBbHSYL2qwWhSjYmBSjYjQpRsFoUo2JgUoWC0OUbEwKUbBaHKFgtClCxGhyjYLQpQsFocoWC0OULBaHKFgsUo2I0OULBFsdPS4OK26xmCbRmCbWmC9ozBNomC9omC9ozBe0TBe0TAtrTBe0TBe1aFoUo6RilGxGKUdCxSjYjQ5QsFoUo2I0KULBaHKNgtClCwWhyhYjHKNgtClCwWhyhYLQ5QsFocoWCxyhYmBC9Ng4jbqmYJtEwXtGYJtEwXtGYL2iYL2iYL2tGi9o/bonRFxe1NihDOMbc5bqdNfWf7cRTvfP1HV8XT47zv7fGvc6M1EtKaTuJTuJ81l0qSfUk8vvY3gc/bHPndcfsz619qnq/o+PCytu10YSfi0Tb4b1nUZePJfrT8x2P0O1/D0vcTY/1XP8A9mX1rPMdj9CtPw9L3F7qf1PP/wBl+tZ5isPoVp+Hpe4m6n9Tz/nv1qeYrD6Fafh6XuJuq/qeb89+tGer2j5LDsrT8PTT9SL9LLzXOq554Z3618jSWodhWTdJTtp8nCTnDPXCT4dmBTlyni+ni7S58fe9qfr/AC5/rBq5c2EvhYqdJvEK9PLpyfQ/mvqfdk+jDOZeD2On6rj557PdfJ8do1lb2C0OULBaFKFgtDlCwWhyhYjHKFgtDlCwGhyhYLQ5QsQWx09Rg4bbp2YJtEwXtGYJtEwXtEwXtGYL2tMC2j9uhdFzvK8KEN2fSnPGVTprjL9u1oWPe+fqupx6fiueX7frXUYQtdHWvKlQpLLb3ylLpfOUmzbwclby9Vy+ed/99HhNNa53VduNu3bUuCxjy0l0uXyexeLD6ToOm7J4uOb5fay/t/t5urcVZvM6tSb6Z1JTfi2Tb08eLjndMZP2jW5S+c/FilX6GPlE2pfOfixbT0MfKC5S+c/FlypePHyiOcvnS8WKUbx4+UZCtUi8xqTi+mM5RfihyheLC+OM+j7+iNb7+12XUlK5oPC2a+XJr6tR789uSXGV53P2dwcu/R9nL9P4dGsL210nbNxSqUqicKtKaW1F84SXJ/7NGVlxrwOTi5en5NXus8K5ZrZoGWj7jYWZUKic6E3veyuMH1rK8UfVx5+lP1e/0nUzn4933p4vhtGsr6LBY5RsFocoWC0OULBaHKzsFjlGwWOVnYLHKFiYFsdPU4OE26RmCbRMF7RmCbRMF7WmC9omBbRMF7R0T+H9gqdrKu16dxJ4fNU4NpLx2n4H08c7tuZ7X5/T5vVzwx+9ef170q69y7eL+Ct3jHKVbHpPuzjx6Q55d+no9k9NOPi9Zfey+zy7QdvWRoW1i0KVEYosRbRGhSqeg1E0dSub5KslONKlOsoS3qUlKMVlc0trPci7e55favLnxcHs91t193U7i3p1YSp1IRnTktmUJJOLXRgG3L455Y30sbquXaIvfNelatKMm7d15W9RN5+D2sRk+uOeP2uk3vtYui5+L+q6SZ2e3rf/AL5vba86NVzo+tuzUoL+YpvnmC9Jd8dpeBnx5ayeP0HL6vnx8r3X93HmfZK6WwWhyhYjHAsFilCwGOULEaHKFgNGkoUWOM7EFtWnq8HBbdAzBNomC9rZgvaJgm0TAtojRe0Rova3WdXYbNjaL+3pPvcU37T78Pdji+ru+o5L+tcoupudSpN8Z1Jzfa5Nv2ny297seKejx4zykaWi5WibLe5LLbwkt7b6BSpvXi9noHUfbSq3rlFPDVvB4lj68uXYvE2xx83hdX2xq3Hg+v8AD1ltoazor4O2oRx8p04uXfJ72N42fU8/Jfazt/cq+irSssTt6E10ulBvueNxFY8/Nx3eOdl+by+nNQ6ck52UnCa3+QnJyhLqjJ74vtyuwt63S9s5y+jz988/j/t4qyuq9jcqpFOnWoycZQmn3wkugt7fLx8XU8Wr3434/wCY9Pc/xDrSpuNO1hTqtY8o6rqRi+lR2Vnx8SSR5OPYmMy3lnvH5a/y8RWbm5Sk3KU3KUm+MpPe2zWV7ExmMknhHb7CXlrSi57/ACtvTcs89qCz7TH4uLzno8t18L/lwqK3LsR9krrr3sYpQsFjlCwWOULBY5QsFjlCwWOULBaNJWdgi2OnrcHAbe+zBNomC9ozBNomC9ojQpURova0aFtHWdBfE7T7tQ/TR6WHuxxfU/j8nzv3ckqLe+1+0+Hfe7PD3Z8gaFKT2WoOhlJu8qRzsycKCfDaX9U/2XefRxY/F4Xa/V2f/DG/P+H1tbNZVZpUaKUriSzv3xpR6X0voX/G8s9Pj7P7PvUX08+7Cf3c5vrytcScq9WdVv58sxXZHgu4z9K10vFwcfFNYYyNVtXqUZbVGc6UlzpycH6hSnnx4ck1njLP1e+1R1slcSjbXTXlX/6qqSiqrXyZLgpep+3SXbne0ezZxT1vF7vxnl/pn8QdCKrRd5TjirRS8rj/AFKPS+uPHsyJXZHV3Dk9TlfZy8P0v+3OGXK6YWhSjp2zQnxO1+7UP00C+LiOf8XP537uH43H0yuw13CxyjYLHKFgscZ0WOBYLHKFgs0gUWOVnUErT12D8+29tmCbRmCbRMF7RMF7RMC2tGi5UFoW0dX0H8Ttfu1D8iPVw9yfJxnU/j8nzv3cnqLe+1+08/fe7LD3Z8mtoUpuuaEoKjaW8Fu2aMG/tNZk/Fs+/GaxkcV1Od5ObPLzrk+kLqVxWq15PLqzlPsT4LuWF3Hy3Ld27Dg45xceOE+EfmaFK2FocqMjKUWpRbjKLUoyXGMk8prvFKlxmUsvhXZbOrG6tac5JONxQjKUeWJw3r1mrh+TG8XLZPHG/auL1abhKUHxhJxfangjuMMvSxmXnNtbQpV6dq0J8Ttfu1D9NFXxcPz/AI2fzv3cQ5G8rsddyMco2C0OULBY5WdgscCwWOBQZpGdFjgVBbF7HB+d7eymC9ozBNomC9omC9rTAtojRe0FoW1uq6E+J2v3ej+RHs8fuY/JxnU/jcnzv3coqL0n2v2nmb73Y4e7PkDRcpyut6Kqqra0JrhOhT8dlZR6eN3jK4rnxuHNlPK1yS5t3RqTpS/qpSlTfbF4PivddOz485nhjnPCxpaFKYtDlWLXQsvklvb6hypvzdk0XQ/l7ShTk8eRt6cJPo2YJN+o3cRzZ+s5ssp8bXGq9TbnOfz5Sn4vIdu2wx9HGY+UkamKG7ToT4na/dqH6aL+Lhuf8bP537uJcjWOz13CxyjYLHKFgscZ0WaQKLHAsBocrOwWOBUEL2eD8529ZmCbRMF7RMF7WjRe0RoUqI0KVBaFtbqWhfilr93o/kR7fH+Hj8nG9T+Nn8793K6i3vtftPJ33uxw92fJraFKT22omlE4O0m/Sg3Ojn5UHvlHtTy+x9R93T8m56Nc/wBr9NZl67Hwvj8y1v1blXbubdZq4Sq0+DqJLdJfWxuxz9r5ePffPEezu0JxT1XJ7vwvl/p4OpBxbjJOMovEoyTjJPoafA+fwdHjlMpuXca8cub3JdLHKvensdUdVp+UhdXUHCMGpUqUliUpcpyXJLkuOfXvhjfGvC7R7RxuN4uK7343/EfW160ure2dCL+GuE4YXGNLhKXfwXb1Dyunx9l9LeXmmdns4/f4OYtBldWLQpVu0aF+J2v3ah+mhfFw3P8AjZ/O/dxM0jtfgLHKNgscoUWOM7BZpAoscZ0WOBQZpGdiCU9rg/NtvTZgm0ZgvaJgvaxwXtEaFtEaFKsWhSo6doOWbO1f9vS/Ij3uG748fk47qprn5J+t+7mFeDjOcXxjKSfameRferr+O7wxv6RqaLlaMp1JQlGcJOM4tSjKO5prmaY5Wd8HLHHPG45Tcr3OhNb6VRKF1ilU4eUx8FPrfzX6j7uPqJe7Lurnuq7K5MLcuL2sfL4z+X3qttbXMVKdOhXjylKMKqx1M31K83Hk5eK6luN+iUNH2tvmVOhQo44yjThB+OC5JEz5uXk7ssrf3fH01rfbW6caDVxW4LYeaUX0ylz7F6gZckj7ul7L5eW7z9nH+/0c6vrupcVJVqsnOpN5b6FySXJdRnvbpuHiw4sJhhNSPzNCjUJDi47ToyPk7SgpbnC3pKXViCyNwvL7XLlr42/dxKO9J9KTFHc6RjgUGaRnRY4FFjgUWaRnRY4FBjjOoIdPc7J+a7fftNki9psl7TaOJNr2jRe17FoUqI0KVYtDlR7vU27VS18nn0qEnF9Oy3mL9bXce10XJ6XFr4xzPanF6HPcvhl3/wAvM62aPdC6lNL4Ou3Ui+W0/wCteO/vPk6rj9Dk38K9fszqJycMx/5Y938PhtGEr0RaHKsWhyokJyi8xlKL6YtxfqNJaq445e9NjVqTn/XKU/tScvaPdTHDHH3ZJ+zU0OUxaHKsGOI+hq/ot3l1To4zDKnWfJUk/S8eHeaYvl63qJwcOWXx8J83SNbb5W1hXlnEpwdGn9uaxu7Fl9xo5joOH1vUYY/DxvyjkOC47MWOBRY4FBjgUWaRnRY4FFjjOgzSBUwIHvNk/NNvr2zZJtNpslr2LiRe0aL2vYtF7LYNC2sWhSrfu0JpJ2ldVN7hL0asVzh0rrXH/s+rpue8We/h8XydZ005+P0f+U8Hu7y1oX1DZbU6c0pQnHjF8pJ9J7eWOHNh5yua4uTk6bl3O7KeMeD0roG4tm24upT5VYJuOPrL5J5fJ0/Jx3w3HSdN1/DzTx1l5V8kylfcDQ5VizSVYMcqCzSVYSHKj9+itB3V415Gm9h8as040kunPPsWTXHG18vUdbw8E9rLv8p4ukaC0NR0fRcYtOTW1WrSxHawvVFb9xvJpzHVdVydTybvh8I8Drlp3+drKNN/+PRyqf8A9JvjU/ZdXaVa6Hs3o/UcfpZe/l/b9P5edZcemLHFUWOBQZpGdFjgUWaRnQY4FFmkZ1Cx06Bsn5ptttmyTabTZJtexcS9r2LiXtexaLKUGiylBoUpbFocq30NEaZrWjxH06TeZUpPd2p8mfX0/U58V7u+eT4+q6Lj55u92Xn/AC9fY6x2lZLNRUpc4VcQ39T4PxPW4+r4s/jq/q8Hm7P5+L/juec737ZWttV9J06FTPynCEs95t6OF+EfPM+XHu3Z9U822v0e3/xQ9xPQw8onr+X89+tTzZa/R7f/ABQ9xPQx8k9fy/nv1rPNlr9Gt/8ADT9xfo4+Sev5fz361nmu0+jW/wDhp+4no4+Sev5vz361kbC1h6SoW8MfKVOnHHfgvUT1vLl3elb+9fk0hrJZW6e1XjOS/wBOi1Un2bty78FXORtw9D1HLfZx7vO9zwusWtFa9zTivI2/OmnmVT7b6Orh2gue3QdH2bx8HtZe1n9vl/LzrJHpixxYscQWOBQY4zos0gUWOM6DNIFFjjOiMdOi7J+ZbXtNkm17RxJtexaL2vYtFrlFoWylCSLKVraLKUGhSnAaHKsWhyo1uK6DSVYtGkqagNGkq9QGhypqA0aSr1AlFdCHKuC0aRYs0iwY4sWOIDHFixwaLHAos0jOgxxnRZpAoscZ0Ri6Tsn5jsNpsk2vYtFr2jiRewaL2WwaEUoNFlKDQila5Is5QaHKQNDlWDRpKsGjSIDQ4sGaSrBmkWDNIgM0ixY4sGaRAY4sWOLFjiqLHAoM0jOixxnRZpAoM0jOoIXTNk/L9sNo4l7TaOJNr2LQtlKDRZSg0XCla2hFKEkKHGuSLONckKHGtocqwZpFg0aRYM0iwZpFgzSIDHFgzSLFmkQGaRYMcWLHEFjiwY4FFmkZ0WOM6DNIFFmkZ0RA6jsn5dt8m02SbXsWi9rlBospQaFClCSEcrXJFwpWuSFDla5IUONckKHGtoUOAzSLa2aRYM0iwZpEBmkWDNIsGaRAZpFgzSLFjiwY4gscWLNIFBjgUWaRnRY4zoM0gVBC6rsn5bt5+xcSbXsWi1yg0I5WuSEUCSFDjXJFnGqSFDjXJChxrkhHGuSFDjWzSEDNIjWzSLBmkWDNIsGaRYM0iAzSLBmkWDHFizSIDHFixwaLNIzoMcCizSM6DNIzqCF1nB+VbeZtGi9r2DQpSla5IspWuSFDjXJChxrkhHGqSFDjXJCjSNUhw41yFDjXIcJrZpFgzSLBmkWDNIsGaxGtmkWDHFizSLBmkWDHEFmkQGKKos0gUWaRnQY4zos0jOiIXXnE/KXk7BotcoNChytckKHGqSFDjVIcONchQ41SFDjXIUaRqkKHGqQmka5DhBI0iwZpFtbNYsGaRYM0iAzSLBmkWDNIsGaRAY4sWOLFjiqDNIzoscZ0GaQKLNIzoiF2Jo/KHiStckXDjXIUaRqkOHGqQjjVIUaRrkKHGqQocapDjSNchQ41SFDjXIcONbNIsGaRbWzWLCQ4sGaxAZpFgzSLBmkWDHEFmkWDHFixxVBmkZ0WOBQZpGdFmkZ0RC7HI/J48ONchRpGqQocapCjSNUhHGuQ40jVIUONUhQ41yGcapCjSNUhHGuQoca5GsWDNItrZpFhI0iwZrEBmkWDNIsGaRYMcQWaRYMcWLHFUGaRnRY4FFmkZ0GaRnREL//Z'),fit:BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: TextButton(onPressed: (){},child: Text(''),),
                          ),
                          Container(
                            width:deviceWidth * 0.035 ,
                            height: deviceHeigth * 0.055,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage(hoverValue ? 'data:image/png;base64,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': 'data:image/png;base64,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' ),fit:BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(onPressed: (){},
                            onHover: (value) => { setState(() {
                              hoverValue =! hoverValue;
                            })},
                            child: Text(''),),
                          ),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
