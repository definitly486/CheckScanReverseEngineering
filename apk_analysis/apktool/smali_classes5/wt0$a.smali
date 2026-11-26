.class public final enum Lwt0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwt0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwt0$a;

.field public static final enum REG_REQUIRED:Lwt0$a;
    .annotation runtime Lbq7;
        value = "REG_REQUIRED"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwt0$a;

    const-string v1, "REG_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwt0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwt0$a;->REG_REQUIRED:Lwt0$a;

    filled-new-array {v0}, [Lwt0$a;

    move-result-object v0

    sput-object v0, Lwt0$a;->$VALUES:[Lwt0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwt0$a;
    .locals 1

    const-class v0, Lwt0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwt0$a;

    return-object p0
.end method

.method public static values()[Lwt0$a;
    .locals 1

    sget-object v0, Lwt0$a;->$VALUES:[Lwt0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwt0$a;

    return-object v0
.end method
