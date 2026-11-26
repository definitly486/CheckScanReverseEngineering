.class public final enum Lxu5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxu5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxu5$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxu5$c;

.field public static final enum BITMAP:Lxu5$c;

.field public static final enum DIRECT:Lxu5$c;

.field public static final enum RENDER_NODE:Lxu5$c;

.field public static final enum SAVE_LAYER:Lxu5$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lxu5$c;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxu5$c;->DIRECT:Lxu5$c;

    new-instance v1, Lxu5$c;

    const-string v2, "SAVE_LAYER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxu5$c;->SAVE_LAYER:Lxu5$c;

    new-instance v2, Lxu5$c;

    const-string v3, "BITMAP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lxu5$c;->BITMAP:Lxu5$c;

    new-instance v3, Lxu5$c;

    const-string v4, "RENDER_NODE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxu5$c;->RENDER_NODE:Lxu5$c;

    filled-new-array {v0, v1, v2, v3}, [Lxu5$c;

    move-result-object v0

    sput-object v0, Lxu5$c;->$VALUES:[Lxu5$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lxu5$c;
    .locals 1

    const-class v0, Lxu5$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxu5$c;

    return-object p0
.end method

.method public static values()[Lxu5$c;
    .locals 1

    sget-object v0, Lxu5$c;->$VALUES:[Lxu5$c;

    invoke-virtual {v0}, [Lxu5$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxu5$c;

    return-object v0
.end method
