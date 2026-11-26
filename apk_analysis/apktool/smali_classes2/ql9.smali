.class public final Lql9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql9$b;
    }
.end annotation


# static fields
.field public static final c:Lql9$b;

.field public static d:Lql9;


# instance fields
.field public final a:Ld49;

.field public final b:Lxa5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lql9$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lql9;->c:Lql9$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lem9;

    invoke-direct {v4}, Lem9;-><init>()V

    new-instance v5, Lql9$a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvl9;

    invoke-direct {v0, p1}, Lvl9;-><init>(Landroid/content/Context;)V

    new-instance v1, Lh4a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v6, "MetricsEvent.db"

    invoke-direct {v1, p1, v6, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance v2, Lnz3;

    invoke-direct {v2, v1, v5}, Lnz3;-><init>(Lh4a;Lql9$a;)V

    new-instance v1, Lx65;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lx65;-><init>(I)V

    new-instance v3, Li13;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Li13;-><init>(I)V

    new-instance v6, Lth5;

    invoke-direct {v6, v2, v1, v3, v5}, Lth5;-><init>(Lnz3;Lx65;Li13;Lql9$a;)V

    new-instance v1, Lkq5;

    new-instance v2, Lf8a;

    new-instance v3, Ll1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lqu6;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v7, v5}, Lf8a;-><init>(Ll1;Lqu6;Lql9$a;)V

    invoke-direct {v1, v2}, Lkq5;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lut9;

    invoke-direct {v2, p1}, Lut9;-><init>(Landroid/content/Context;)V

    new-instance v3, Ln97;

    new-instance v7, Lxn9;

    new-instance v8, Lh;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v7, v0, v8}, Lxn9;-><init>(Lvl9;Lh;)V

    new-instance v0, Ljx0;

    invoke-direct {v0, p1}, Ljx0;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v7, v0, v1, v2}, Ln97;-><init>(Lxn9;Ljx0;Lkq5;Lut9;)V

    new-instance v0, Loh8;

    invoke-direct {v0, v6, v3}, Loh8;-><init>(Lth5;Ln97;)V

    new-instance v1, Ld49;

    invoke-direct {v1, v6, v0}, Ld49;-><init>(Lth5;Loh8;)V

    iput-object v1, p0, Lql9;->a:Ld49;

    new-instance v0, Ls39;

    new-instance v2, Lm00;

    new-instance v3, Lfu9;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Lm00;-><init>(Lfu9;)V

    invoke-direct {v0, v2}, Ls39;-><init>(Lm00;)V

    new-instance v3, Lwb9;

    invoke-direct {v3, p1, v0}, Lwb9;-><init>(Landroid/content/Context;Ls39;)V

    new-instance p1, Lxa5;

    new-instance v2, Lnt;

    invoke-direct {v2, v6}, Lnt;-><init>(Lth5;)V

    new-instance v0, Lx2a;

    invoke-direct/range {v0 .. v5}, Lx2a;-><init>(Ld49;Lnt;Lwb9;Lem9;Lql9$a;)V

    invoke-direct {p1, v0}, Lxa5;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lql9;->b:Lxa5;

    return-void
.end method
