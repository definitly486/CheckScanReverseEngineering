.class public final synthetic Lh7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/du3;


# instance fields
.field public final synthetic a:Lyads/qi1;

.field public final synthetic b:Lr07;


# direct methods
.method public synthetic constructor <init>(Lyads/qi1;Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7a;->a:Lyads/qi1;

    iput-object p2, p0, Lh7a;->b:Lr07;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lh7a;->a:Lyads/qi1;

    iget-object p0, p0, Lh7a;->b:Lr07;

    invoke-static {v0, p0}, Lyads/qi1;->a(Lyads/qi1;Lr07;)V

    return-void
.end method
