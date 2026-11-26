.class public final enum Lh94$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh94$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lh94$a;

.field public static final enum CT_ERROR:Lh94$a;

.field public static final enum CT_INFO:Lh94$a;

.field public static final enum CT_UNKNOWN:Lh94$a;

.field public static final enum CT_WARNING:Lh94$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lh94$a;

    const-string v1, "CT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh94$a;->CT_UNKNOWN:Lh94$a;

    new-instance v1, Lh94$a;

    const-string v2, "CT_INFO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh94$a;->CT_INFO:Lh94$a;

    new-instance v2, Lh94$a;

    const-string v3, "CT_WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh94$a;->CT_WARNING:Lh94$a;

    new-instance v3, Lh94$a;

    const-string v4, "CT_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh94$a;->CT_ERROR:Lh94$a;

    filled-new-array {v0, v1, v2, v3}, [Lh94$a;

    move-result-object v0

    sput-object v0, Lh94$a;->$VALUES:[Lh94$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lh94$a;
    .locals 1

    const-class v0, Lh94$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh94$a;

    return-object p0
.end method

.method public static values()[Lh94$a;
    .locals 1

    sget-object v0, Lh94$a;->$VALUES:[Lh94$a;

    invoke-virtual {v0}, [Lh94$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh94$a;

    return-object v0
.end method
