.class public final Lyads/il6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t96;

.field public final b:Lyads/gl6;

.field public final c:Lyads/hl6;

.field public final d:Lyads/jl6;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t96;)V
    .locals 3

    new-instance v0, Lyads/gl6;

    invoke-direct {v0, p2}, Lyads/gl6;-><init>(Lyads/t96;)V

    new-instance v1, Lyads/hl6;

    invoke-direct {v1}, Lyads/hl6;-><init>()V

    new-instance v2, Lyads/jl6;

    invoke-direct {v2}, Lyads/jl6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/il6;->a:Lyads/t96;

    iput-object v0, p0, Lyads/il6;->b:Lyads/gl6;

    iput-object v1, p0, Lyads/il6;->c:Lyads/hl6;

    iput-object v2, p0, Lyads/il6;->d:Lyads/jl6;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/il6;->e:Landroid/content/Context;

    return-void
.end method
