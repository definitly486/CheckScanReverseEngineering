.class final Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;

    invoke-direct {v0}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;-><init>()V

    sput-object v0, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/CharSequence;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1$3;->emit(Ljava/lang/CharSequence;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
