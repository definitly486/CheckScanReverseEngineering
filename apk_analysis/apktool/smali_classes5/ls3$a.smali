.class public final enum Lls3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lls3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lls3$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lls3$a;

.field public static final enum BasicCategory:Lls3$a;

.field public static final enum GroupedCategory:Lls3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lls3$a;

    const-string v1, "BasicCategory"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lls3$a;->BasicCategory:Lls3$a;

    new-instance v1, Lls3$a;

    const-string v2, "GroupedCategory"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lls3$a;->GroupedCategory:Lls3$a;

    filled-new-array {v0, v1}, [Lls3$a;

    move-result-object v0

    sput-object v0, Lls3$a;->$VALUES:[Lls3$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lls3$a;
    .locals 1

    const-class v0, Lls3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lls3$a;

    return-object p0
.end method

.method public static values()[Lls3$a;
    .locals 1

    sget-object v0, Lls3$a;->$VALUES:[Lls3$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lls3$a;

    return-object v0
.end method
