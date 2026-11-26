.class public final Lez4$m$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$m$e;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lal2;

.field public final synthetic c:Lez4$m$e;


# direct methods
.method public constructor <init>(Lez4$m$e;Lal2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$m$e$a;->c:Lez4$m$e;

    iput-object p2, p0, Lez4$m$e$a;->b:Lal2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lez4$m$e$a;->b:Lal2;

    invoke-virtual {v0}, Ljz1;->run()V

    iget-object p0, p0, Lez4$m$e$a;->c:Lez4$m$e;

    iget-object v0, p0, Lez4$m$e;->r:Lez4$m;

    iget-object v0, v0, Lez4$m;->d:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    new-instance v1, Lez4$m$e$b;

    invoke-direct {v1, p0}, Lez4$m$e$b;-><init>(Lez4$m$e;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
