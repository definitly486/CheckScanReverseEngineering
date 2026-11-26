.class public final Lzu3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lgx0;

.field public static final e:Lgx0;

.field public static final f:Lgx0;

.field public static final g:Lgx0;

.field public static final h:Lgx0;


# instance fields
.field public final a:Lgx0;

.field public final b:Lgx0;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lgx0;->e:Lgx0;

    const-string v0, ":status"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lzu3;->d:Lgx0;

    const-string v0, ":method"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lzu3;->e:Lgx0;

    const-string v0, ":path"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lzu3;->f:Lgx0;

    const-string v0, ":scheme"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lzu3;->g:Lgx0;

    const-string v0, ":authority"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object v0

    sput-object v0, Lzu3;->h:Lgx0;

    const-string v0, ":host"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    const-string v0, ":version"

    invoke-static {v0}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    return-void
.end method

.method public constructor <init>(Lgx0;Lgx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu3;->a:Lgx0;

    iput-object p2, p0, Lzu3;->b:Lgx0;

    invoke-virtual {p1}, Lgx0;->f()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lgx0;->f()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lzu3;->c:I

    return-void
.end method

.method public constructor <init>(Lgx0;Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lgx0;->e:Lgx0;

    invoke-static {p2}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p2

    .line 24
    invoke-direct {p0, p1, p2}, Lzu3;-><init>(Lgx0;Lgx0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    sget-object v0, Lgx0;->e:Lgx0;

    invoke-static {p1}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p1

    invoke-static {p2}, Lgx0$a;->c(Ljava/lang/String;)Lgx0;

    move-result-object p2

    .line 22
    invoke-direct {p0, p1, p2}, Lzu3;-><init>(Lgx0;Lgx0;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lzu3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lzu3;

    iget-object v0, p0, Lzu3;->a:Lgx0;

    iget-object v2, p1, Lzu3;->a:Lgx0;

    invoke-virtual {v0, v2}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzu3;->b:Lgx0;

    iget-object p1, p1, Lzu3;->b:Lgx0;

    invoke-virtual {p0, p1}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lzu3;->a:Lgx0;

    invoke-virtual {v0}, Lgx0;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lzu3;->b:Lgx0;

    invoke-virtual {p0}, Lgx0;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lzu3;->a:Lgx0;

    invoke-virtual {v0}, Lgx0;->x()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lzu3;->b:Lgx0;

    invoke-virtual {p0}, Lgx0;->x()Ljava/lang/String;

    move-result-object p0

    const-string v1, ": "

    invoke-static {v0, v1, p0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
