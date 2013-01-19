.class public Lcom/motorola/android/kinetics/Kinetic;
.super Ljava/lang/Object;
.source "Kinetic.java"


# static fields
.field public static final TYPE_ACTIVITYLEVEL:I = 0x3

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_GESTURE:I = 0x4

.field public static final TYPE_LOCATION:I = 0x2

.field public static final TYPE_PEDOMETER:I = 0x1

.field public static final TYPE_SLEEP:I = 0x5


# instance fields
.field private mHandle:I

.field private mName:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method getHandle()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/motorola/android/kinetics/Kinetic;->mHandle:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/android/kinetics/Kinetic;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/motorola/android/kinetics/Kinetic;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/android/kinetics/Kinetic;->mVendor:Ljava/lang/String;

    return-object v0
.end method
