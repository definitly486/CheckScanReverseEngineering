.class public final synthetic Lid6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lod6;


# direct methods
.method public synthetic constructor <init>(Lod6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid6;->b:Lod6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lid6;->b:Lod6;

    invoke-virtual {p0}, Lod6;->stop()V

    return-void
.end method
