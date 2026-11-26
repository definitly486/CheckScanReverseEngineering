.class public final enum Lc4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc4$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lc4$a;

.field public static final enum AlreadyCreated:Lc4$a;

.field public static final enum BackendError:Lc4$a;

.field public static final enum Error:Lc4$a;

.field public static final enum NewUsernameSent:Lc4$a;

.field public static final enum UsernameNotFound:Lc4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lc4$a;

    const-string v1, "NewUsernameSent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc4$a;->NewUsernameSent:Lc4$a;

    new-instance v1, Lc4$a;

    const-string v2, "UsernameNotFound"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc4$a;->UsernameNotFound:Lc4$a;

    new-instance v2, Lc4$a;

    const-string v3, "Error"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc4$a;->Error:Lc4$a;

    new-instance v3, Lc4$a;

    const-string v4, "BackendError"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc4$a;->BackendError:Lc4$a;

    new-instance v4, Lc4$a;

    const-string v5, "AlreadyCreated"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lc4$a;->AlreadyCreated:Lc4$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lc4$a;

    move-result-object v0

    sput-object v0, Lc4$a;->$VALUES:[Lc4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lc4$a;
    .locals 1

    const-class v0, Lc4$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc4$a;

    return-object p0
.end method

.method public static values()[Lc4$a;
    .locals 1

    sget-object v0, Lc4$a;->$VALUES:[Lc4$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc4$a;

    return-object v0
.end method
