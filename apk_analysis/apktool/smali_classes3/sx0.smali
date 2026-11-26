.class public final enum Lsx0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsx0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lsx0;

.field public static final enum DISABLED:Lsx0;

.field public static final enum ENABLED:Lsx0;

.field public static final enum READ_ONLY:Lsx0;

.field public static final enum WRITE_ONLY:Lsx0;


# instance fields
.field private final readEnabled:Z

.field private final writeEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lsx0;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lsx0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lsx0;->ENABLED:Lsx0;

    new-instance v1, Lsx0;

    const-string v4, "READ_ONLY"

    invoke-direct {v1, v4, v3, v3, v2}, Lsx0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lsx0;->READ_ONLY:Lsx0;

    new-instance v4, Lsx0;

    const-string v5, "WRITE_ONLY"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v3}, Lsx0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lsx0;->WRITE_ONLY:Lsx0;

    new-instance v3, Lsx0;

    const-string v5, "DISABLED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v2, v2}, Lsx0;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lsx0;->DISABLED:Lsx0;

    filled-new-array {v0, v1, v4, v3}, [Lsx0;

    move-result-object v0

    sput-object v0, Lsx0;->$VALUES:[Lsx0;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lsx0;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lsx0;->readEnabled:Z

    iput-boolean p4, p0, Lsx0;->writeEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsx0;
    .locals 1

    const-class v0, Lsx0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsx0;

    return-object p0
.end method

.method public static values()[Lsx0;
    .locals 1

    sget-object v0, Lsx0;->$VALUES:[Lsx0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsx0;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lsx0;->readEnabled:Z

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lsx0;->writeEnabled:Z

    return p0
.end method
