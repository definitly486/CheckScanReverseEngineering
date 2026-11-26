.class public final Lyads/vc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/yc;


# direct methods
.method public constructor <init>(Lyads/yc;)V
    .locals 0

    iput-object p1, p0, Lyads/vc;->b:Lyads/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lyads/vc;->b:Lyads/yc;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyads/yc;->a(Z)V

    return-void
.end method
