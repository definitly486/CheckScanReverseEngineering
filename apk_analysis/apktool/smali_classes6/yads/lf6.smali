.class public final Lyads/lf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tz2;


# instance fields
.field public a:Lyads/jf6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lyads/lf6;->a:Lyads/jf6;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/jf6;->a:Lyads/k50;

    invoke-virtual {v0}, Lyads/k50;->m()V

    invoke-virtual {p0}, Lyads/jf6;->h()V

    invoke-virtual {p0}, Lyads/jf6;->n()V

    :cond_0
    return-void
.end method
