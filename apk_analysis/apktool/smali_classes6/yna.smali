.class public final synthetic Lyna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lyads/zt5;

.field public final synthetic b:Lyads/th0;


# direct methods
.method public synthetic constructor <init>(Lyads/zt5;Lyads/th0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyna;->a:Lyads/zt5;

    iput-object p2, p0, Lyna;->b:Lyads/th0;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lyna;->a:Lyads/zt5;

    iget-object p0, p0, Lyna;->b:Lyads/th0;

    invoke-static {v0, p0, p1, p2}, Lyads/zt5;->a(Lyads/zt5;Lyads/th0;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
