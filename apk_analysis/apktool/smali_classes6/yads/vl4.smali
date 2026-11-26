.class public final Lyads/vl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/me6;


# instance fields
.field public final a:Lyads/pf6;


# direct methods
.method public constructor <init>(Lyads/em4;)V
    .locals 1

    new-instance v0, Lyads/pf6;

    invoke-direct {v0, p1}, Lyads/pf6;-><init>(Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/vl4;->a:Lyads/pf6;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lyads/vl4;->a:Lyads/pf6;

    invoke-virtual {p0}, Lyads/pf6;->a()Z

    move-result p0

    return p0
.end method
