.class public final Lks9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lks9;


# instance fields
.field public final a:Lpp9;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lks9;

    sget-object v1, Lpp9;->d:Lpp9;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lks9;-><init>(Lpp9;Ljava/lang/String;Z)V

    sput-object v0, Lks9;->d:Lks9;

    return-void
.end method

.method public constructor <init>(Lpp9;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks9;->a:Lpp9;

    iput-object p2, p0, Lks9;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lks9;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lks9;
    .locals 2

    iget-object v0, p0, Lks9;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "."

    invoke-static {v0, v1, p1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lks9;

    iget-object v1, p0, Lks9;->a:Lpp9;

    iget-boolean p0, p0, Lks9;->c:Z

    invoke-direct {v0, v1, p1, p0}, Lks9;-><init>(Lpp9;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final b(I)V
    .locals 7

    const-string v0, ""

    invoke-virtual {p0, v0}, Lks9;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lks9;->a:Lpp9;

    const/4 v3, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p2}, Lks9;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lks9;->a:Lpp9;

    const/4 v2, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final d(I)Lks9;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lks9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lks9;

    iget-object v1, p0, Lks9;->a:Lpp9;

    iget-boolean p0, p0, Lks9;->c:Z

    invoke-direct {v0, v1, p1, p0}, Lks9;-><init>(Lpp9;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Lks9;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ": "

    invoke-static {p0, v0, p1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(I)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lks9;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lks9;->a:Lpp9;

    invoke-virtual {p0, v1, p1, v0}, Lpp9;->d(IILjava/lang/String;)V

    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lks9;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    iget-object p0, p0, Lks9;->a:Lpp9;

    invoke-virtual {p0, v0, p1, p2}, Lpp9;->d(IILjava/lang/String;)V

    return-void
.end method
