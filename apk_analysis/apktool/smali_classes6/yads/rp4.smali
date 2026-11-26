.class public final Lyads/rp4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/lo6;

.field public final b:Lyads/up4;

.field public final c:Lyads/gq4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/lo6;)V
    .locals 1

    new-instance v0, Lyads/up4;

    invoke-direct {v0, p1}, Lyads/up4;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/gq4;

    invoke-direct {p1}, Lyads/gq4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/rp4;->a:Lyads/lo6;

    iput-object v0, p0, Lyads/rp4;->b:Lyads/up4;

    iput-object p1, p0, Lyads/rp4;->c:Lyads/gq4;

    return-void
.end method
