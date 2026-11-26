.class public final enum Lwl1$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwl1$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwl1$a;

.field public static final enum ANDROID_FIREBASE:Lwl1$a;

.field public static final enum UNKNOWN:Lwl1$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lwl1$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwl1$a;->UNKNOWN:Lwl1$a;

    new-instance v1, Lwl1$a;

    const/4 v2, 0x1

    const/16 v3, 0x17

    const-string v4, "ANDROID_FIREBASE"

    invoke-direct {v1, v4, v2, v3}, Lwl1$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwl1$a;->ANDROID_FIREBASE:Lwl1$a;

    filled-new-array {v0, v1}, [Lwl1$a;

    move-result-object v0

    sput-object v0, Lwl1$a;->$VALUES:[Lwl1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lwl1$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwl1$a;
    .locals 1

    const-class v0, Lwl1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwl1$a;

    return-object p0
.end method

.method public static values()[Lwl1$a;
    .locals 1

    sget-object v0, Lwl1$a;->$VALUES:[Lwl1$a;

    invoke-virtual {v0}, [Lwl1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwl1$a;

    return-object v0
.end method
