.class public final Lez4$l$1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lh88;

.field public final synthetic c:Lez4$l;


# direct methods
.method public constructor <init>(Lez4$l;Lh88;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$l$1a;->c:Lez4$l;

    iput-object p2, p0, Lez4$l$1a;->b:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lez4$l$1a;->c:Lez4$l;

    iget-object p0, p0, Lez4$l$1a;->b:Lh88;

    invoke-virtual {v0, p0}, Lez4$l;->b(Lh88;)V

    return-void
.end method
