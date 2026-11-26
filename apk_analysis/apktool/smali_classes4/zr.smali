.class public final enum Lzr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lzr;

.field public static final enum BOTTOM:Lzr;

.field public static final Companion:Lzr$a;

.field public static final enum END:Lzr;

.field public static final enum START:Lzr;

.field public static final enum TOP:Lzr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lzr;

    const-string v1, "BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzr;->BOTTOM:Lzr;

    new-instance v1, Lzr;

    const-string v2, "TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzr;->TOP:Lzr;

    new-instance v2, Lzr;

    const-string v3, "START"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lzr;->START:Lzr;

    new-instance v3, Lzr;

    const-string v4, "END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzr;->END:Lzr;

    filled-new-array {v0, v1, v2, v3}, [Lzr;

    move-result-object v0

    sput-object v0, Lzr;->$VALUES:[Lzr;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lzr;->$ENTRIES:Lg03;

    new-instance v0, Lzr$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzr;->Companion:Lzr$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzr;
    .locals 1

    const-class v0, Lzr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzr;

    return-object p0
.end method

.method public static values()[Lzr;
    .locals 1

    sget-object v0, Lzr;->$VALUES:[Lzr;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzr;

    return-object v0
.end method
