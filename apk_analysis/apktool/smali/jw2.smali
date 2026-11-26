.class public final enum Ljw2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljw2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljw2;

.field public static final enum AddEmail:Ljw2;

.field public static final enum SignIn:Ljw2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljw2;

    const-string v1, "SignIn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljw2;->SignIn:Ljw2;

    new-instance v1, Ljw2;

    const-string v2, "AddEmail"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljw2;->AddEmail:Ljw2;

    filled-new-array {v0, v1}, [Ljw2;

    move-result-object v0

    sput-object v0, Ljw2;->$VALUES:[Ljw2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ljw2;
    .locals 1

    const-class v0, Ljw2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljw2;

    return-object p0
.end method

.method public static values()[Ljw2;
    .locals 1

    sget-object v0, Ljw2;->$VALUES:[Ljw2;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljw2;

    return-object v0
.end method
