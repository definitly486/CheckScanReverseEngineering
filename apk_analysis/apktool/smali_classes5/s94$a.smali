.class public final Ls94$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls94;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls94;


# direct methods
.method public constructor <init>(Ls94;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls94$a;->b:Ls94;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Ls94$a;->b:Ls94;

    iget-object p0, p0, Ls94;->c:Lp94;

    iget-object v0, p0, Lp94;->t:Lnz4;

    const/4 v1, 0x0

    iput-object v1, p0, Lp94;->s:Lch8$c;

    iput-object v1, p0, Lp94;->t:Lnz4;

    sget-object p0, Lh88;->m:Lh88;

    const-string v1, "InternalSubchannel closed transport due to address change"

    invoke-virtual {p0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-interface {v0, p0}, Lnz4;->e(Lh88;)V

    return-void
.end method
