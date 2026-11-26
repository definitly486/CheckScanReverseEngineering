.class public final Lsb4$b;
.super Lrb4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final f:Lsb4;

.field public final g:Lsb4$c;

.field public final h:Lhi1;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lsb4;Lsb4$c;Lhi1;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p1, p0, Lsb4$b;->f:Lsb4;

    iput-object p2, p0, Lsb4$b;->g:Lsb4$c;

    iput-object p3, p0, Lsb4$b;->h:Lhi1;

    iput-object p4, p0, Lsb4$b;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 5

    sget p1, Lsb4;->d:I

    iget-object p1, p0, Lsb4$b;->f:Lsb4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsb4$b;->h:Lhi1;

    invoke-static {v0}, Lsb4;->Y(Lpu4;)Lhi1;

    move-result-object v1

    iget-object v2, p0, Lsb4$b;->g:Lsb4$c;

    iget-object p0, p0, Lsb4$b;->i:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2, v1, p0}, Lsb4;->j0(Lsb4$c;Lhi1;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lsb4$c;->b:Lbo5;

    new-instance v3, Lbr4;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lbr4;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Lpu4;->c(Lpu4;I)Z

    invoke-static {v0}, Lsb4;->Y(Lpu4;)Lhi1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2, v0, p0}, Lsb4;->j0(Lsb4$c;Lhi1;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2, p0}, Lsb4;->F(Lsb4$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsb4;->s(Ljava/lang/Object;)V

    return-void
.end method
