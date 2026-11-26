.class public final Lk67$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67;->w(Lh88;Ldm1$a;Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Ldm1$a;

.field public final synthetic d:Lla5;

.field public final synthetic e:Lk67;


# direct methods
.method public constructor <init>(Lk67;Lh88;Ldm1$a;Lla5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$m;->e:Lk67;

    iput-object p2, p0, Lk67$m;->b:Lh88;

    iput-object p3, p0, Lk67$m;->c:Ldm1$a;

    iput-object p4, p0, Lk67$m;->d:Lla5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lk67$m;->e:Lk67;

    iput-boolean v0, v1, Lk67;->A:Z

    iget-object v0, v1, Lk67;->v:Ldm1;

    iget-object v1, p0, Lk67$m;->c:Ldm1$a;

    iget-object v2, p0, Lk67$m;->d:Lla5;

    iget-object p0, p0, Lk67$m;->b:Lh88;

    invoke-interface {v0, p0, v1, v2}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    return-void
.end method
