.class public final synthetic Lzda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/ua;

.field public final synthetic c:Lyads/kh0;


# direct methods
.method public synthetic constructor <init>(Lyads/ua;Lyads/kh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzda;->b:Lyads/ua;

    iput-object p2, p0, Lzda;->c:Lyads/kh0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzda;->b:Lyads/ua;

    iget-object p0, p0, Lzda;->c:Lyads/kh0;

    invoke-static {v0, p0, p1}, Lyads/ua;->a(Lyads/ua;Lyads/kh0;Landroid/view/View;)V

    return-void
.end method
