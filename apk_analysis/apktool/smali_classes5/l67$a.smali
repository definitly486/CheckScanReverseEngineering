.class public final Ll67$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll67;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ll67;


# direct methods
.method public constructor <init>(Ll67;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll67$a;->b:Ll67;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Ll67$a;->b:Ll67;

    iget-object p0, p0, Ll67;->h:Lk67;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk67;->A:Z

    iget-object v0, p0, Lk67;->v:Ldm1;

    iget-object p0, p0, Lk67;->t:Lk67$t;

    iget-object v1, p0, Lk67$t;->a:Lh88;

    iget-object v2, p0, Lk67$t;->b:Ldm1$a;

    iget-object p0, p0, Lk67$t;->c:Lla5;

    invoke-interface {v0, v1, v2, p0}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void
.end method
