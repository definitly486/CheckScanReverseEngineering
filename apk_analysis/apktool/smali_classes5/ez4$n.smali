.class public final enum Lez4$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lez4$n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lez4$n;

.field public static final enum ERROR:Lez4$n;

.field public static final enum NO_RESOLUTION:Lez4$n;

.field public static final enum SUCCESS:Lez4$n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lez4$n;

    const-string v1, "NO_RESOLUTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lez4$n;->NO_RESOLUTION:Lez4$n;

    new-instance v1, Lez4$n;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lez4$n;->SUCCESS:Lez4$n;

    new-instance v2, Lez4$n;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lez4$n;->ERROR:Lez4$n;

    filled-new-array {v0, v1, v2}, [Lez4$n;

    move-result-object v0

    sput-object v0, Lez4$n;->$VALUES:[Lez4$n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lez4$n;
    .locals 1

    const-class v0, Lez4$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lez4$n;

    return-object p0
.end method

.method public static values()[Lez4$n;
    .locals 1

    sget-object v0, Lez4$n;->$VALUES:[Lez4$n;

    invoke-virtual {v0}, [Lez4$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lez4$n;

    return-object v0
.end method
