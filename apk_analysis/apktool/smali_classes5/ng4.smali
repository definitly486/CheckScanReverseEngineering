.class public final enum Lng4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lng4;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lng4;

.field public static final enum VIEWMODEL_SCOPE_FACTORY:Lng4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lng4;

    const-string v1, "VIEWMODEL_SCOPE_FACTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng4;->VIEWMODEL_SCOPE_FACTORY:Lng4;

    filled-new-array {v0}, [Lng4;

    move-result-object v0

    sput-object v0, Lng4;->$VALUES:[Lng4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lng4;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lng4;
    .locals 1

    const-class v0, Lng4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lng4;

    return-object p0
.end method

.method public static values()[Lng4;
    .locals 1

    sget-object v0, Lng4;->$VALUES:[Lng4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lng4;

    return-object v0
.end method
