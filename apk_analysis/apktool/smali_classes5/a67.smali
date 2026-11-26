.class public final La67;
.super Lrb4;
.source "SourceFile"


# instance fields
.field public final f:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p1, p0, La67;->f:Lc31;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, La67;->f:Lc31;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
