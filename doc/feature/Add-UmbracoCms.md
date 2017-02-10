# Feature: Add-UmbracoCms

Add Umbraco CMS deployment to the project.

## Implementation

Options for implementation include

* Download [Umbraco v7.5.9 archive][1] file

* [UmbracoCms Nuget Package][2] dependency


### Umbraco Zip 

Unzip the contents of the [Umbraco Zip][1] file into the `app` folder.

The Umbraco zip install mechanism has been added to the Umbraco [dockerfile][3]


### UmbracoCms Nuget Package

```
nuget install UmbracoCms -OutputDirectory packages
```


[1]: https://our.umbraco.org/contribute/releases/759?fromdownload=true
[2]: https://www.nuget.org/packages/UmbracoCms/
[3]: ../../dockerfile