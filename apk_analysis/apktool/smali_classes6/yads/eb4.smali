.class public final Lyads/eb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/f00;


# instance fields
.field public final a:Lyads/vb4;


# direct methods
.method public constructor <init>(Lyads/vb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eb4;->a:Lyads/vb4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ot3;Lyads/h00;)V
    .locals 1

    new-instance v0, Lyads/db4;

    invoke-direct {v0, p1, p2}, Lyads/db4;-><init>(Lyads/ot3;Lyads/h00;)V

    iget-object p0, p0, Lyads/eb4;->a:Lyads/vb4;

    invoke-virtual {p0, v0}, Lyads/vb4;->setClickListener(Lyads/e00;)V

    return-void
.end method
