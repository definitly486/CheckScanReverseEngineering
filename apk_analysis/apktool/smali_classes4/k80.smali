.class public final enum Lk80;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk80;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lk80;

.field public static final enum BOTTOM:Lk80;

.field public static final enum END:Lk80;

.field public static final enum START:Lk80;

.field public static final enum TOP:Lk80;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk80;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk80;->START:Lk80;

    new-instance v1, Lk80;

    const-string v2, "END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk80;->END:Lk80;

    new-instance v2, Lk80;

    const-string v3, "TOP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk80;->TOP:Lk80;

    new-instance v3, Lk80;

    const-string v4, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk80;->BOTTOM:Lk80;

    filled-new-array {v0, v1, v2, v3}, [Lk80;

    move-result-object v0

    sput-object v0, Lk80;->$VALUES:[Lk80;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lk80;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk80;
    .locals 1

    const-class v0, Lk80;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk80;

    return-object p0
.end method

.method public static values()[Lk80;
    .locals 1

    sget-object v0, Lk80;->$VALUES:[Lk80;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk80;

    return-object v0
.end method
