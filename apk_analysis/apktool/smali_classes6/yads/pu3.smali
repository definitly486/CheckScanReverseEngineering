.class public final Lyads/pu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyads/ou3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pu3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyads/pu3;->b:Ljava/lang/Object;

    invoke-interface {p0}, Lyads/ou3;->b()V

    return-void
.end method
