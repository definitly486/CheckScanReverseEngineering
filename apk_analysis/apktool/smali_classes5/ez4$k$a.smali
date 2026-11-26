.class public final Lez4$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$k;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lez4$k;


# direct methods
.method public constructor <init>(Lez4$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$k$a;->b:Lez4$k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lez4$k$a;->b:Lez4$k;

    iget-object p0, p0, Lez4$k;->b:Lez4;

    sget-object v0, Lez4;->c0:Ljava/util/logging/Logger;

    iget-object v0, p0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-boolean v0, p0, Lez4;->x:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lez4;->w:Lnj3;

    invoke-virtual {p0}, Lnj3;->b()V

    :cond_0
    return-void
.end method
