.class public abstract Lcom/motorola/android/kinetics/IKineticService$Stub;
.super Landroid/os/Binder;
.source "IKineticService.java"

# interfaces
.implements Lcom/motorola/android/kinetics/IKineticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/kinetics/IKineticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/kinetics/IKineticService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.kinetics.IKineticService"

.field static final TRANSACTION_calibrate:I = 0x5

.field static final TRANSACTION_calibrationStatus:I = 0x6

.field static final TRANSACTION_enableKinetic:I = 0x2

.field static final TRANSACTION_eraseCalibration:I = 0x9

.field static final TRANSACTION_getCalibrationStatus:I = 0x7

.field static final TRANSACTION_getDataChannel:I = 0x1

.field static final TRANSACTION_requestUpdate:I = 0xa

.field static final TRANSACTION_setActivity:I = 0x4

.field static final TRANSACTION_setScreenOnGestureStatus:I = 0xb

.field static final TRANSACTION_setUserCorrectedDistance:I = 0x8

.field static final TRANSACTION_setUserProfile:I = 0x3

.field static final TRANSACTION_sleepAnalysis:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/kinetics/IKineticService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/kinetics/IKineticService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "com.motorola.android.kinetics.IKineticService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/motorola/android/kinetics/IKineticService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Lcom/motorola/android/kinetics/IKineticService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/motorola/android/kinetics/IKineticService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/kinetics/IKineticService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_180

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 45
    :sswitch_8
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_7

    .line 50
    :sswitch_f
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/android/kinetics/IKineticService$Stub;->getDataChannel()Landroid/os/Bundle;

    move-result-object v8

    .line 52
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v8, :cond_27

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_25
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 64
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_2c
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 68
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, _arg4:B
    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/kinetics/IKineticService$Stub;->enableKinetic(Landroid/os/IBinder;Ljava/lang/String;IIB)Z

    move-result v8

    .line 76
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v8, :cond_55

    const/4 v0, 0x1

    :goto_50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x1

    goto :goto_7

    .line 77
    :cond_55
    const/4 v0, 0x0

    goto :goto_50

    .line 82
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:B
    .end local v8           #_result:Z
    :sswitch_57
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/motorola/android/kinetics/IKineticService$Stub;->setUserProfile(IIII)Z

    move-result v8

    .line 92
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v8, :cond_7b

    const/4 v0, 0x1

    :goto_76
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x1

    goto :goto_7

    .line 93
    :cond_7b
    const/4 v0, 0x0

    goto :goto_76

    .line 98
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v8           #_result:Z
    :sswitch_7d
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9a

    const/4 v0, 0x1

    move v1, v0

    .line 101
    .local v1, _arg0:Z
    :goto_8a
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/IKineticService$Stub;->setActivity(Z)Z

    move-result v8

    .line 102
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v8, :cond_9d

    const/4 v0, 0x1

    :goto_94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 100
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_9a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8a

    .line 103
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_9d
    const/4 v0, 0x0

    goto :goto_94

    .line 108
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_9f
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 113
    .local v6, _arg1:D
    invoke-virtual {p0, v1, v6, v7}, Lcom/motorola/android/kinetics/IKineticService$Stub;->calibrate(ID)Z

    move-result v8

    .line 114
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v8, :cond_bc

    const/4 v0, 0x1

    :goto_b6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 115
    :cond_bc
    const/4 v0, 0x0

    goto :goto_b6

    .line 120
    .end local v1           #_arg0:I
    .end local v6           #_arg1:D
    .end local v8           #_result:Z
    :sswitch_be
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_db

    const/4 v0, 0x1

    move v1, v0

    .line 123
    .local v1, _arg0:Z
    :goto_cb
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/IKineticService$Stub;->calibrationStatus(Z)Z

    move-result v8

    .line 124
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v8, :cond_de

    const/4 v0, 0x1

    :goto_d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 122
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_db
    const/4 v0, 0x0

    move v1, v0

    goto :goto_cb

    .line 125
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_de
    const/4 v0, 0x0

    goto :goto_d5

    .line 130
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_e0
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/motorola/android/kinetics/IKineticService$Stub;->getCalibrationStatus()I

    move-result v8

    .line 132
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 138
    .end local v8           #_result:I
    :sswitch_f2
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/kinetics/IKineticService$Stub;->setUserCorrectedDistance(II)Z

    move-result v8

    .line 144
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v8, :cond_10f

    const/4 v0, 0x1

    :goto_109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 145
    :cond_10f
    const/4 v0, 0x0

    goto :goto_109

    .line 150
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_111
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/motorola/android/kinetics/IKineticService$Stub;->eraseCalibration()Z

    move-result v8

    .line 152
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v8, :cond_126

    const/4 v0, 0x1

    :goto_120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 153
    :cond_126
    const/4 v0, 0x0

    goto :goto_120

    .line 158
    .end local v8           #_result:Z
    :sswitch_128
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/IKineticService$Stub;->requestUpdate(I)Z

    move-result v8

    .line 162
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v8, :cond_141

    const/4 v0, 0x1

    :goto_13b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 163
    :cond_141
    const/4 v0, 0x0

    goto :goto_13b

    .line 168
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_143
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_160

    const/4 v0, 0x1

    move v1, v0

    .line 171
    .local v1, _arg0:Z
    :goto_150
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/IKineticService$Stub;->setScreenOnGestureStatus(Z)Z

    move-result v8

    .line 172
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v8, :cond_163

    const/4 v0, 0x1

    :goto_15a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 170
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_160
    const/4 v0, 0x0

    move v1, v0

    goto :goto_150

    .line 173
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_163
    const/4 v0, 0x0

    goto :goto_15a

    .line 178
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_165
    const-string v0, "com.motorola.android.kinetics.IKineticService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 181
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/IKineticService$Stub;->sleepAnalysis(B)Z

    move-result v8

    .line 182
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v8, :cond_17e

    const/4 v0, 0x1

    :goto_178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 183
    :cond_17e
    const/4 v0, 0x0

    goto :goto_178

    .line 41
    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_57
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_9f
        0x6 -> :sswitch_be
        0x7 -> :sswitch_e0
        0x8 -> :sswitch_f2
        0x9 -> :sswitch_111
        0xa -> :sswitch_128
        0xb -> :sswitch_143
        0xc -> :sswitch_165
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
