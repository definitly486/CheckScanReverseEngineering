.class public final synthetic Lmd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lod6;


# direct methods
.method public synthetic constructor <init>(Lod6;Lad6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd6;->b:Lod6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lmd6;->b:Lod6;

    iget-boolean v0, p0, Lod6;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lod6;->stop()V

    :cond_0
    return-void
.end method
