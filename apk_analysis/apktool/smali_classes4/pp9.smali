.class public final Lpp9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lpp9;


# instance fields
.field public final a:Lz8a;

.field public final b:Lzm9;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lpp9;

    sget-object v1, Lz8a;->i:Lz8a;

    sget-object v2, Lzm9;->g:Lzm9;

    invoke-direct {v0, v1, v2}, Lpp9;-><init>(Lz8a;Lzm9;)V

    sput-object v0, Lpp9;->d:Lpp9;

    return-void
.end method

.method public constructor <init>(Lz8a;Lzm9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpp9;->c:Z

    iput-object p1, p0, Lpp9;->a:Lz8a;

    iput-object p2, p0, Lpp9;->b:Lzm9;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v4, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lpp9;->a:Lz8a;

    iget-object v1, v0, Lz8a;->f:Lj5a;

    move-object v2, p0

    move-object v6, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lj5a;->b(Lpp9;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final d(IILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lpp9;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lpp9;

    iget-object v0, p0, Lpp9;->a:Lz8a;

    iget-object v1, p1, Lpp9;->a:Lz8a;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lpp9;->b:Lzm9;

    iget-object p1, p1, Lpp9;->b:Lzm9;

    invoke-virtual {p0, p1}, Lzm9;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lpp9;->a:Lz8a;

    iget-object p0, p0, Lpp9;->b:Lzm9;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
