.class public final synthetic Lkx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/hm;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/hm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkx9;->b:Lyads/hm;

    iput p2, p0, Lkx9;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkx9;->b:Lyads/hm;

    iget p0, p0, Lkx9;->c:I

    invoke-virtual {v0, p0}, Lyads/hm;->a(I)V

    return-void
.end method
