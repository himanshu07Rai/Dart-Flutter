<h2 style="color:#e20">Intro</h1>

## <span style="color:#ee0">What is dart?<span>

Logo = End of a dart arrow.

![image](https://user-images.githubusercontent.com/64080063/147378299-2ab521d4-33e1-43d1-a666-68764c904250.png)

- Precision : Language has to be optimised as possible.
- Speed : Language has to be minimallist and fast to run.
- Tough : Language has to be scalable , maintinable and readable.
- Modifiable : Language has to benefit of fast hot reload.
- Foundation of flutter

---

## <span style="color:#ee0">Particularities</span>

- Type safe

  ![image](https://user-images.githubusercontent.com/64080063/147378341-67bb1d34-a055-487d-91bc-8953ce38ed04.png)

- Has dynamic type . Correctness is checked at the run time.

- Type inference

  ```
  var x = 5.1;
  ```

- var vs dynamic

  ![image](https://user-images.githubusercontent.com/64080063/147378841-ca39ff0b-fa7b-424f-9d28-0f7d1fddf344.png)

- Sound Null Safety
  - Variables can't contain NULL, unless we say them can
- Different compiler of development ( JIT ) and production ( AOT )

---

<h2 style="color:#ee0">Dart SDK</h2>

Set of tools that help in building app

- Installing SDK

---

<h2 style="color:#ee0">Working with Dart</h2>

<h3 style="color:#ee8">Installing extensions / Plugins</h3>

Dart

Dart Class Generator

Pubspec Assist

---

<h2 style="color:#ee0">Creating new Dart project</h2>

    ```
    dart create -t <template_name> <project_name>



    dart create -t console-full console_full_project
    ```

---

<h2 style="color:#ee0">Folder structure</h2>

![image](https://user-images.githubusercontent.com/64080063/147382521-b2a2ed4e-017f-4c46-95a8-c1d348bbd9ca.png)

---

## <span style="color:#ee0">Dart package<span>

Dart project = Dart package ( just like node )

Application package : Package that won't be uploaded to pub.

Library package : Package that will be uploaded.
