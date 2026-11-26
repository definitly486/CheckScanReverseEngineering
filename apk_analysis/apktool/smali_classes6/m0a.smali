.class public final synthetic Lm0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/k14;

.field public final synthetic c:Lyads/l14;

.field public final synthetic d:Lyads/cu3;

.field public final synthetic e:Lyads/r04;


# direct methods
.method public synthetic constructor <init>(Lyads/k14;Lyads/l14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0a;->b:Lyads/k14;

    iput-object p2, p0, Lm0a;->c:Lyads/l14;

    iput-object p3, p0, Lm0a;->d:Lyads/cu3;

    iput-object p4, p0, Lm0a;->e:Lyads/r04;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lm0a;->d:Lyads/cu3;

    iget-object v1, p0, Lm0a;->e:Lyads/r04;

    iget-object v2, p0, Lm0a;->b:Lyads/k14;

    iget-object p0, p0, Lm0a;->c:Lyads/l14;

    invoke-virtual {v2, p0, v0, v1}, Lyads/k14;->b(Lyads/l14;Lyads/cu3;Lyads/r04;)V

    return-void
.end method
