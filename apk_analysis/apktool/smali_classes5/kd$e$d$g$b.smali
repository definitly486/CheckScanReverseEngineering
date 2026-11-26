.class public final Lkd$e$d$g$b;
.super Lkd$e$d$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$e$d$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$e$d$g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$e$d$g$b;

    const-string v1, "card_from_bonus"

    invoke-direct {v0, v1}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$e$d$g$b;->e:Lkd$e$d$g$b;

    return-void
.end method
