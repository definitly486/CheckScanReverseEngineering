.class public final synthetic Lkfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/lm6;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lyads/vg;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lyads/lm6;Landroid/content/Context;Lyads/vg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkfa;->b:Lyads/lm6;

    iput-object p2, p0, Lkfa;->c:Landroid/content/Context;

    iput-object p3, p0, Lkfa;->d:Lyads/vg;

    iput-object p4, p0, Lkfa;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkfa;->d:Lyads/vg;

    iget-object v1, p0, Lkfa;->e:Ljava/lang/String;

    iget-object v2, p0, Lkfa;->b:Lyads/lm6;

    iget-object p0, p0, Lkfa;->c:Landroid/content/Context;

    invoke-static {v2, p0, v0, v1}, Lyads/vg;->a(Lyads/lm6;Landroid/content/Context;Lyads/vg;Ljava/lang/String;)Lyads/gj0;

    move-result-object p0

    return-object p0
.end method
