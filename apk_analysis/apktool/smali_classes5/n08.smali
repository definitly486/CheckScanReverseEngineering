.class public final enum Ln08;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lxl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln08;",
        ">;",
        "Lxl3<",
        "Lc18;",
        "Ldt6;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ln08;

.field public static final enum INSTANCE:Ln08;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln08;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln08;->INSTANCE:Ln08;

    filled-new-array {v0}, [Ln08;

    move-result-object v0

    sput-object v0, Ln08;->$VALUES:[Ln08;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln08;
    .locals 1

    const-class v0, Ln08;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln08;

    return-object p0
.end method

.method public static values()[Ln08;
    .locals 1

    sget-object v0, Ln08;->$VALUES:[Ln08;

    invoke-virtual {v0}, [Ln08;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln08;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc18;

    new-instance p0, Lh18;

    invoke-direct {p0, p1}, Lh18;-><init>(Lc18;)V

    return-object p0
.end method
