.class public final Lsp7$b;
.super Lsp7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsp7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lsp7$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsp7$b;

    invoke-direct {v0}, Lsp7;-><init>()V

    sput-object v0, Lsp7$b;->a:Lsp7$b;

    return-void
.end method
