.class public final synthetic Lx34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lfh1;

.field public final synthetic e:Lw34;

.field public final synthetic f:Lk2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lfh1;Lw34;Lk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx34;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lx34;->c:Ljava/lang/String;

    iput-object p3, p0, Lx34;->d:Lfh1;

    iput-object p4, p0, Lx34;->e:Lw34;

    iput-object p5, p0, Lx34;->f:Lk2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lx34;->f:Lk2;

    move-object v5, p1

    check-cast v5, Lf73;

    iget-object v0, p0, Lx34;->b:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lx34;->c:Ljava/lang/String;

    iget-object v2, p0, Lx34;->d:Lfh1;

    iget-object v3, p0, Lx34;->e:Lw34;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->F(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lfh1;Lw34;Lk2;Lf73;)La75;

    move-result-object p0

    return-object p0
.end method
