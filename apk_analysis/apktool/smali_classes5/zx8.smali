.class public final synthetic Lzx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcy8;

.field public final synthetic c:Lcy8$a;


# direct methods
.method public synthetic constructor <init>(Lcy8;Lcy8$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx8;->b:Lcy8;

    iput-object p2, p0, Lzx8;->c:Lcy8$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lzx8;->b:Lcy8;

    const/4 p2, 0x0

    iput-object p2, p1, Lcy8;->b:Lcy8$a;

    iput-object p2, p1, Lcy8;->c:Landroid/app/AlertDialog;

    iput-object p2, p1, Lcy8;->d:Landroid/app/Activity;

    iget-object p0, p0, Lzx8;->c:Lcy8$a;

    iget-object p0, p0, Lcy8$a;->b:Lf69;

    invoke-virtual {p0}, Lf69;->invoke()Ljava/lang/Object;

    return-void
.end method
