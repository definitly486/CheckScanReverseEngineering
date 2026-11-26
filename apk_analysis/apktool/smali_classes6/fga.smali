.class public final synthetic Lfga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/b05;

.field public final synthetic c:Lyads/rd3;

.field public final synthetic d:Lyads/wf4;


# direct methods
.method public synthetic constructor <init>(Lyads/b05;Lyads/rd3;Lyads/wf4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfga;->b:Lyads/b05;

    iput-object p2, p0, Lfga;->c:Lyads/rd3;

    iput-object p3, p0, Lfga;->d:Lyads/wf4;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfga;->c:Lyads/rd3;

    iget-object v1, p0, Lfga;->d:Lyads/wf4;

    iget-object p0, p0, Lfga;->b:Lyads/b05;

    invoke-static {p0, v0, v1}, Lyads/wf4;->a(Lyads/b05;Lyads/rd3;Lyads/wf4;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
