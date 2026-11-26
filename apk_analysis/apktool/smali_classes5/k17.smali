.class public final enum Lk17;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk17;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lg03;

.field private static final synthetic $VALUES:[Lk17;

.field public static final enum CANON_EQ:Lk17;

.field public static final enum COMMENTS:Lk17;

.field public static final enum DOT_MATCHES_ALL:Lk17;

.field public static final enum IGNORE_CASE:Lk17;

.field public static final enum LITERAL:Lk17;

.field public static final enum MULTILINE:Lk17;

.field public static final enum UNIX_LINES:Lk17;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lk17;

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk17;->IGNORE_CASE:Lk17;

    new-instance v1, Lk17;

    const/16 v2, 0x8

    const-string v4, "MULTILINE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk17;->MULTILINE:Lk17;

    new-instance v2, Lk17;

    const-string v4, "LITERAL"

    const/16 v6, 0x10

    invoke-direct {v2, v4, v3, v6}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lk17;->LITERAL:Lk17;

    new-instance v3, Lk17;

    const-string v4, "UNIX_LINES"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk17;->UNIX_LINES:Lk17;

    new-instance v4, Lk17;

    const-string v5, "COMMENTS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lk17;->COMMENTS:Lk17;

    new-instance v5, Lk17;

    const/4 v6, 0x5

    const/16 v7, 0x20

    const-string v8, "DOT_MATCHES_ALL"

    invoke-direct {v5, v8, v6, v7}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk17;->DOT_MATCHES_ALL:Lk17;

    new-instance v6, Lk17;

    const/4 v7, 0x6

    const/16 v8, 0x80

    const-string v9, "CANON_EQ"

    invoke-direct {v6, v9, v7, v8}, Lk17;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lk17;->CANON_EQ:Lk17;

    filled-new-array/range {v0 .. v6}, [Lk17;

    move-result-object v0

    sput-object v0, Lk17;->$VALUES:[Lk17;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lk17;->$ENTRIES:Lg03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lk17;->value:I

    iput p3, p0, Lk17;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk17;
    .locals 1

    const-class v0, Lk17;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk17;

    return-object p0
.end method

.method public static values()[Lk17;
    .locals 1

    sget-object v0, Lk17;->$VALUES:[Lk17;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk17;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lk17;->value:I

    return p0
.end method
