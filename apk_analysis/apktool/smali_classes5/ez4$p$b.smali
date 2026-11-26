.class public final Lez4$p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$p;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lez4$p;


# direct methods
.method public constructor <init>(Lez4$p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$p$b;->b:Lez4$p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lez4$p$b;->b:Lez4$p;

    iget-object p0, p0, Lez4$p;->f:Lp94;

    sget-object v0, Lez4;->e0:Lh88;

    iget-object v1, p0, Lp94;->m:Lch8;

    new-instance v2, Lt94;

    invoke-direct {v2, p0, v0}, Lt94;-><init>(Lp94;Lh88;)V

    invoke-virtual {v1, v2}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
