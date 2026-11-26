.class public final Lyads/gs3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rb4;


# instance fields
.field public final synthetic a:Lyads/ks3;

.field public final synthetic b:Lyads/vb4;


# direct methods
.method public constructor <init>(Lyads/ks3;Lyads/vb4;)V
    .locals 0

    iput-object p1, p0, Lyads/gs3;->a:Lyads/ks3;

    iput-object p2, p0, Lyads/gs3;->b:Lyads/vb4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 13
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lyads/gs3;->a:Lyads/ks3;

    invoke-static {v0}, Lyads/ks3;->a(Lyads/ks3;)Lyads/pz;

    move-result-object v0

    iget-object p0, p0, Lyads/gs3;->b:Lyads/vb4;

    invoke-virtual {v0, p0, p1}, Lyads/pz;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/vb4;Ljava/util/Map;)V
    .locals 0

    .line 12
    return-void
.end method
