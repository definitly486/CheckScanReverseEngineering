.class public final Lyads/uv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/xv1;


# direct methods
.method public constructor <init>(Lyads/xv1;)V
    .locals 0

    iput-object p1, p0, Lyads/uv1;->b:Lyads/xv1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lyads/uv1;->b:Lyads/xv1;

    iget v0, p0, Lyads/xv1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/xv1;->c:I

    invoke-virtual {p0}, Lyads/xv1;->b()V

    return-void
.end method
