.class public final Lk67$w$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$w;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk67$w;


# direct methods
.method public constructor <init>(Lk67$w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w$f;->b:Lk67$w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lk67$w$f;->b:Lk67$w;

    iget-object p0, p0, Lk67$w;->b:Lk67;

    iget-boolean v0, p0, Lk67;->A:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lk67;->v:Ldm1;

    invoke-interface {p0}, Lj98;->d()V

    :cond_0
    return-void
.end method
