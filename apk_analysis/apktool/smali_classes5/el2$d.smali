.class public final Lel2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lel2;->e(Lh88;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lel2;


# direct methods
.method public constructor <init>(Lel2;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel2$d;->c:Lel2;

    iput-object p2, p0, Lel2$d;->b:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lel2$d;->c:Lel2;

    iget-object p0, p0, Lel2;->h:Lez4$g;

    iget-object p0, p0, Lez4$g;->a:Lez4;

    iget-object p0, p0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string v0, "Channel must have been shut down"

    invoke-static {p0, v0}, Lo8;->s(ZLjava/lang/Object;)V

    return-void
.end method
