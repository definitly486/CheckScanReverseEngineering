.class public final Lhl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lgl2;


# direct methods
.method public constructor <init>(Lgl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl2;->b:Lgl2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhl2;->b:Lgl2;

    invoke-virtual {p0}, Lgl2;->n()V

    return-void
.end method
