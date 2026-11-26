.class public Landroidx/webkit/WebMessageCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebMessageCompat$Type;
    }
.end annotation


# static fields
.field public static final TYPE_ARRAY_BUFFER:I = 0x1

.field public static final TYPE_STRING:I


# instance fields
.field private final mArrayBuffer:[B

.field private final mPorts:[Landroidx/webkit/WebMessagePortCompat;

.field private final mString:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Landroidx/webkit/WebMessageCompat;-><init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    .line 20
    iput-object p2, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Landroidx/webkit/WebMessageCompat;-><init>([B[Landroidx/webkit/WebMessagePortCompat;)V

    return-void
.end method

.method public constructor <init>([B[Landroidx/webkit/WebMessagePortCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    iput-object p2, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    return-void
.end method

.method private checkType(I)V
    .locals 2

    iget v0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    invoke-direct {p0, v0}, Landroidx/webkit/WebMessageCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " expected, but got "

    invoke-direct {p0, p1}, Landroidx/webkit/WebMessageCompat;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wrong data accessor type detected. "

    invoke-static {p1, v0, v1, p0}, Ln2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private typeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "ArrayBuffer"

    return-object p0

    :cond_1
    const-string p0, "String"

    return-object p0
.end method


# virtual methods
.method public getArrayBuffer()[B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/webkit/WebMessageCompat;->checkType(I)V

    iget-object v0, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/webkit/WebMessageCompat;->mArrayBuffer:[B

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/webkit/WebMessageCompat;->checkType(I)V

    iget-object p0, p0, Landroidx/webkit/WebMessageCompat;->mString:Ljava/lang/String;

    return-object p0
.end method

.method public getPorts()[Landroidx/webkit/WebMessagePortCompat;
    .locals 0

    iget-object p0, p0, Landroidx/webkit/WebMessageCompat;->mPorts:[Landroidx/webkit/WebMessagePortCompat;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Landroidx/webkit/WebMessageCompat;->mType:I

    return p0
.end method
