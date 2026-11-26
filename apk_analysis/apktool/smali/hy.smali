.class public final Lhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Li80;


# direct methods
.method public constructor <init>(Li80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy;->b:Li80;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhy;->b:Li80;

    invoke-virtual {p0}, Li80;->c()V

    return-void
.end method
